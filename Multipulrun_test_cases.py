import subprocess

def run_robot_tests(iterations):
    for i in range(iterations):
        print(f"Iteration {i + 1}:")
        result = subprocess.run(['robot', r'C:\Users\manis\PycharmProjects\pythonProject2\UseCase09_Demonstrate_Vehicle_History.robot'], capture_output=True, text=True)
        if result.returncode == 0:
            print("Test passed")
        else:
            print("Test failed")
        print(result.stdout)

# Change the number 5 to the desired number of iterations
run_robot_tests(3)

