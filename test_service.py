import calculator 
import calculator_pb2_grpc
import calculator_pb2

class CalculatorServicer(calculator_pb2_grpc.CalculatorServicer):


    def MultiplyFn(self, request, context):
        response = calculator_pb2.Number()
        response.value = calculator.square_root(request.value)
        return response

    def MultiplyFn(self, request, context):
        response = calculator_pb2.Number()
        response.value = calculator.square_root(request.value)
        return response

    def MultiplyFn(self, request, context):
        response = calculator_pb2.Number()
        response.value = calculator.square_root(request.value)
        return response

    def MultiplyFn(self, request, context):
        response = calculator_pb2.Number()
        response.value = calculator.square_root(request.value)
        return response

    def MultiplyFn(self, request, context):
        response = calculator_pb2.Number()
        response.value = calculator.square_root(request.value)
        return response

