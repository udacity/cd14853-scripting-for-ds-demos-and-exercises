import sys
import pandas as pd

def main():
    if len(sys.argv) != 2:
        print("Usage: python summarize_orders.py <path_to_csv>")
        sys.exit(1)

    file_path = sys.argv[1]

    df = pd.read_csv(file_path)

    print("Order Summary")
    print("-------------")

    print(f"Total rows: {len(df)}")
    print("\nOrders by status:")
    print(df["status"].value_counts())

    print("\nOrders by region:")
    print(df["region"].value_counts())

if __name__ == "__main__":
    main()