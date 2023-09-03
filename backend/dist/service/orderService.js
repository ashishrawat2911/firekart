"use strict";
var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    function adopt(value) { return value instanceof P ? value : new P(function (resolve) { resolve(value); }); }
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : adopt(result.value).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
Object.defineProperty(exports, "__esModule", { value: true });
const mapper_1 = require("../mapper/mapper");
const di_1 = require("../di/di");
class OrderService {
    constructor(orderRepository) {
        this.orderRepository = orderRepository;
    }
    getAllOrders(userId) {
        return __awaiter(this, void 0, void 0, function* () {
            const orders = yield this.orderRepository.getAllOrdersForUserId(userId);
            return orders.map(mapper_1.orderEntityToResponseDTO);
        });
    }
    placeOrder(userId, order) {
        return __awaiter(this, void 0, void 0, function* () {
            yield di_1.cartService.clearCart(userId);
            yield this.orderRepository.addOrder(userId, order);
            const token = yield di_1.userService.getDeviceToken(userId);
            console.log(token);
            if (!token) {
                yield di_1.fcmService.sendMessage("Order Placed", "Order Successfully placed", token);
            }
        });
    }
}
exports.default = OrderService;
