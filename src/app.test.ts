import { app } from "./app";

test("app is Hello From the under world", () => {
    expect(app()).toBe("Hello From the under world");
});