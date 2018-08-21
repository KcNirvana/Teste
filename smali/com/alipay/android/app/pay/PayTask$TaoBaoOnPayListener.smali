.class public interface abstract Lcom/alipay/android/app/pay/PayTask$TaoBaoOnPayListener;
.super Ljava/lang/Object;
.source "PayTask.java"

# interfaces
.implements Lcom/alipay/android/app/pay/PayTask$OnPayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/app/pay/PayTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TaoBaoOnPayListener"
.end annotation


# virtual methods
.method public abstract onTaoBaoPayFailed(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onTaoBaoPaySuccess(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method
