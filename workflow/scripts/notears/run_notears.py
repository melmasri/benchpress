import notears
import argparse
import pandas as pd


def main(loss, loss_grad, min_rate_of_progress, penalty_growth_rate,
         optimation_accuracy, seed, filename, data_filename):

    loss_func = None
    if loss == "least_squares_loss":
        loss_func = notears.loss.least_squares_loss
    elif loss == "least_squares_loss_cov":
        loss_func = notears.loss.least_squares_loss_cov

    loss_grad_func = None
    if loss_grad == "least_squares_loss_grad":
        loss_grad_func = notears.loss.least_squares_loss_grad
    elif loss_grad == "least_squares_loss_cov_grad":
        loss_grad_func = notears.loss.least_squares_loss_cov_grad

    data_df = pd.read_csv(data_filename, sep=" ")

    output_dict = notears.run(
        notears.notears_standard,
        data_df.values,
        loss_func,
        loss_grad_func,
        e=optimation_accuracy,
        r=penalty_growth_rate,
        c=min_rate_of_progress,
        verbose=False)

    adjmat = notears.utils.threshold_output(output_dict['W'])
    pd.DataFrame(adjmat).to_csv(filename, index=False)


if __name__ == "__main__":
    parser = argparse.ArgumentParser("NOTEARS.")

    parser.add_argument(
        '-c', '--min_rate_of_progress',
        type=float, required=True
    )
    parser.add_argument(
        '-r', '--penalty_growth_rate',
        type=float, required=True
    )
    parser.add_argument(
        '-e', '--optimation_accuracy',
        type=float, required=True
    )
    parser.add_argument(
        '-l', '--loss',
        type=str, required=True
    )
    parser.add_argument(
        '-g', '--loss_grad',
        type=str, required=True
    )
    parser.add_argument(
        '-s', '--seed',
        type=int, required=True
    )
    parser.add_argument(
        '-F', '--filename',
        required=True,
        help="Output filename"
    )
    parser.add_argument(
        '-d', '--data_filename',
        required=True,
        help="Data filename"
    )

    args = parser.parse_args()
    main(**args.__dict__)