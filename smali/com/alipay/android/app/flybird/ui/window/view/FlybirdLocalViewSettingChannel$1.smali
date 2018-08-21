.class Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel$1;
.super Ljava/lang/Object;
.source "FlybirdLocalViewSettingChannel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel$1;->this$0:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel$1;->this$0:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;->onBack()Z

    return-void
.end method
