.class Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel$3;
.super Ljava/lang/Object;
.source "FlybirdLocalViewSettingChannel.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel$3;->this$0:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel$3;->this$0:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel$3;->this$0:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;

    invoke-static {v1}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;->access$000(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;)Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;->updateViewData(Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;)V

    return-void
.end method
