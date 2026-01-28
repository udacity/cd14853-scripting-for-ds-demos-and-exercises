import subprocess

def main():
    result = subprocess.run(
        ["bash", "scripts/check_data_quality.sh", "data/events.log"],
        capture_output=True,
        text=True,
        check=True
    )

    print("Shell script output:")
    print(result.stdout)

if __name__ == "__main__":
    main()