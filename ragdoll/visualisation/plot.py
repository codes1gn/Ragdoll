import numpy as np
import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt

__all__ = [
    "draw_plot_1x1",
    "draw_plots_nx1",
]


# Draw a single lineplot
# linelabels: list of xlabels, can be names of lines
# data_list: 2D list [linelabels, xlabels]
# ylegend: the text shown in Y axis
def draw_plot_1x1(chart_type, linelabel, data_list, title="Title", rotation=0):
    assert chart_type == "line" or chart_type == "bar"

    plt.rcParams["figure.dpi"] = 300
    plt.rcParams["figure.figsize"] = (3, 3)

    fig, (subfig) = plt.subplots(ncols=1, figsize=(4, 3))
    if chart_type == "line":
        plot_data = pd.DataFrame(
            dict(zip(linelabel, [res for res in data_list])))
        sns.lineplot(plot_data, ax=subfig)
    elif chart_type == "bar":
        plot_data = pd.DataFrame(
            dict(zip(linelabel, [[np.mean(res)] for res in data_list]))
        )
        sns.barplot(plot_data, ax=subfig)
        subfig.set_xticklabels(subfig.get_xticklabels(), rotation=rotation)

    plt.suptitle(title)


def draw_plots_nx1(chart_types, linelabels,  data_lists, x_lists=[], title="Title", rotation=0):
    for chart_type in chart_types:
        assert chart_type == "line" or chart_type == "bar"
    subfig_cnt = len(chart_types)

    plt.rcParams["figure.dpi"] = 300
    plt.rcParams["figure.figsize"] = (3, 3)

    fig, subfigs = plt.subplots(ncols=subfig_cnt, figsize=(8, 3))
    for idx in range(subfig_cnt):
        chart_type = chart_types[idx]
        data_list = data_lists[idx]
        x_list = x_lists[idx]
        linelabel = linelabels[idx]
        subfig = subfigs[idx]
        if chart_type == "line":
            plot_data = pd.DataFrame(
                dict(zip(linelabel, [res for res in data_list])))
            sns.lineplot(plot_data, ax=subfig)
            subfig.set_xticklabels(x_list)
        elif chart_type == "bar":
            plot_data = pd.DataFrame(
                dict(zip(linelabel, [[np.mean(res)] for res in data_list]))
            )
            sns.barplot(plot_data, ax=subfig)
            subfig.set_xticklabels(subfig.get_xticklabels(), rotation=rotation)

    plt.suptitle(title)
