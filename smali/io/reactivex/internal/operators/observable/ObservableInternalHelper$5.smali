.class final Lio/reactivex/internal/operators/observable/ObservableInternalHelper$5;
.super Ljava/lang/Object;
.source "ObservableInternalHelper.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/reactivex/internal/operators/observable/ObservableInternalHelper;->replayFunction(Lio/reactivex/functions/Function;Lio/reactivex/Scheduler;)Lio/reactivex/functions/Function;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function",
        "<",
        "Lio/reactivex/Observable",
        "<TT;>;",
        "Lio/reactivex/ObservableSource",
        "<TR;>;>;"
    }
.end annotation


# instance fields
.field final synthetic val$scheduler:Lio/reactivex/Scheduler;

.field final synthetic val$selector:Lio/reactivex/functions/Function;


# direct methods
.method constructor <init>(Lio/reactivex/functions/Function;Lio/reactivex/Scheduler;)V
    .locals 0

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$5;->val$selector:Lio/reactivex/functions/Function;

    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$5;->val$scheduler:Lio/reactivex/Scheduler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observable",
            "<TT;>;)",
            "Lio/reactivex/ObservableSource",
            "<TR;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$5;->val$selector:Lio/reactivex/functions/Function;

    invoke-interface {v0, p1}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/ObservableSource;

    invoke-static {v0}, Lio/reactivex/Observable;->wrap(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v0

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$5;->val$scheduler:Lio/reactivex/Scheduler;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Lio/reactivex/Observable;

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$5;->apply(Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;

    move-result-object v0

    return-object v0
.end method
