function [X_train, y_train, X_pred, y_pred] = split_dataset(X, y, percentage)
    num_data = size(X, 1);

    %Calculating the number of train lines
    num_data_train = round(percentage * num_data);

    % Obtaining first percentage * num_data lines
    X_train = X(1 : num_data_train, :);
    y_train = y(1 : num_data_train);

    % Obtaining the last (1 - percentage) * num_data lines
    X_pred = X(num_data_train + 1 : end, :);
    y_pred = y(num_data_train + 1 : end);
endfunction

