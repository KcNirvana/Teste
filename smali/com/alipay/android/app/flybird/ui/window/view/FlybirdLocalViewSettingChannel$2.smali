.class Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel$2;
.super Ljava/lang/Object;
.source "FlybirdLocalViewSettingChannel.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel$2;->this$0:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel$2;->this$0:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;->mOperation:Lcom/alipay/android/app/flybird/ui/event/FlybirdLocalViewOperation;

    const-string/jumbo v1, ""

    invoke-interface {v0, v1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdLocalViewOperation;->preView(Ljava/lang/String;)V

    return-void
.end method
