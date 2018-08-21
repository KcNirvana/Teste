.class public final Lcom/miui/payment/rx/AndroidSchedulers;
.super Ljava/lang/Object;
.source "AndroidSchedulers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/payment/rx/AndroidSchedulers$MainHolder;
    }
.end annotation


# static fields
.field private static final MAIN_THREAD:Lio/reactivex/Scheduler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/payment/rx/AndroidSchedulers$1;

    invoke-direct {v0}, Lcom/miui/payment/rx/AndroidSchedulers$1;-><init>()V

    invoke-static {v0}, Lcom/miui/payment/rx/RxAndroidPlugins;->initMainThreadScheduler(Ljava/util/concurrent/Callable;)Lio/reactivex/Scheduler;

    move-result-object v0

    sput-object v0, Lcom/miui/payment/rx/AndroidSchedulers;->MAIN_THREAD:Lio/reactivex/Scheduler;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "No instances."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static from(Landroid/os/Looper;)Lio/reactivex/Scheduler;
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "looper == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/miui/payment/rx/HandlerScheduler;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Lcom/miui/payment/rx/HandlerScheduler;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method public static mainThread()Lio/reactivex/Scheduler;
    .locals 1

    sget-object v0, Lcom/miui/payment/rx/AndroidSchedulers;->MAIN_THREAD:Lio/reactivex/Scheduler;

    invoke-static {v0}, Lcom/miui/payment/rx/RxAndroidPlugins;->onMainThreadScheduler(Lio/reactivex/Scheduler;)Lio/reactivex/Scheduler;

    move-result-object v0

    return-object v0
.end method
