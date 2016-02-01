library(UsingR)
data(galton)
predict_h <- function(pmh, pfh) {
    result <- ""
    fit <- lm(child~parent, data = galton)
    vmh <- as.numeric(pmh)
    vfh <- as.numeric(pfh)
    pred <- predict(fit, data.frame(parent=(vmh*1.08+vfh)/2), interval="predict")

    if (is.na(vmh) || is.na(vfh) || vfh <= 0 || vmh <= 0 ){
        result <- "Parents height is not valid!"
    } else {
        result <- paste("For mother height = ", pmh, " and father height = "
            , pfh , "the predicted child height is:", round(pred[1],2) )
    }
    return(result)
}