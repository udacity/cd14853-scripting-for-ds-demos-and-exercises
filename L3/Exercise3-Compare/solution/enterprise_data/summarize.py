from pathlib import Path

def main():
    log_dir = Path("logs")
    log_files = sorted(log_dir.glob("*.log"))

    files_count = len(log_files)
    total_lines = 0
    error_lines = 0

    for path in log_files:
        text = path.read_text(encoding="utf-8")
        lines = text.splitlines()
        total_lines += len(lines)
        error_lines += sum(1 for line in lines if "ERROR" in line)

    print(f"Files: {files_count}")
    print(f"Total lines: {total_lines}")
    print(f"ERROR lines: {error_lines}")

if __name__ == "__main__":
    main()
