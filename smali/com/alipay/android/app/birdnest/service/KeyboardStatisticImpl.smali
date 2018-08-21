.class public Lcom/alipay/android/app/birdnest/service/KeyboardStatisticImpl;
.super Ljava/lang/Object;
.source "KeyboardStatisticImpl.java"

# interfaces
.implements Lcom/alipay/android/app/safepaybase/alikeyboard/p;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatistic(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "keyboard"

    const-string/jumbo v1, "show"

    invoke-static {v0, p1, v1}, Lcom/alipay/android/app/statistic/h;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
