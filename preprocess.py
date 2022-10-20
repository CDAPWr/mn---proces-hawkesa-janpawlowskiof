import pandas as pd


def main(person_index: int):
    df = pd.read_csv("data/communication.csv", sep=";", header=0, names=["receiver", "sender", "time"])
    df = df.loc[(df["sender"] == person_index) | (df["receiver"] == person_index)]

    time_df = pd.to_datetime(df["time"]).apply(lambda x: x.value / 100_000_000_000)

    new_df = time_df.to_frame()

    new_df = new_df.groupby(['time'])['time'].count().reset_index(name="magnitude")
    new_df.sort_values(by="time")
    new_df["time"] -= new_df["time"].min()

    new_df.to_csv(f"data/communication_fixed_{person_index}.csv", index=False)
    print(new_df)


if __name__ == "__main__":
    main(84)
    main(118)
