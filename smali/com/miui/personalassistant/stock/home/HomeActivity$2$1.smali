.class Lcom/miui/personalassistant/stock/home/HomeActivity$2$1;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/stock/home/HomeActivity$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/personalassistant/stock/home/HomeActivity$2;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/stock/home/HomeActivity$2;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/stock/home/HomeActivity$2$1;->this$1:Lcom/miui/personalassistant/stock/home/HomeActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/personalassistant/stock/home/HomeActivity$2$1;->this$1:Lcom/miui/personalassistant/stock/home/HomeActivity$2;

    iget-object v0, v0, Lcom/miui/personalassistant/stock/home/HomeActivity$2;->this$0:Lcom/miui/personalassistant/stock/home/HomeActivity;

    invoke-static {v0}, Lcom/miui/personalassistant/stock/home/HomeActivity;->access$100(Lcom/miui/personalassistant/stock/home/HomeActivity;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/personalassistant/stock/home/HomeActivity$2$1;->this$1:Lcom/miui/personalassistant/stock/home/HomeActivity$2;

    iget-object v1, v0, Lcom/miui/personalassistant/stock/home/HomeActivity$2;->this$0:Lcom/miui/personalassistant/stock/home/HomeActivity;

    if-nez p2, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-static {v1, v0}, Lcom/miui/personalassistant/stock/home/HomeActivity;->access$200(Lcom/miui/personalassistant/stock/home/HomeActivity;I)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/miui/personalassistant/stock/home/HomeActivity$2$1;->this$1:Lcom/miui/personalassistant/stock/home/HomeActivity$2;

    iget-object v0, v0, Lcom/miui/personalassistant/stock/home/HomeActivity$2;->this$0:Lcom/miui/personalassistant/stock/home/HomeActivity;

    invoke-static {v0}, Lcom/miui/personalassistant/stock/home/HomeActivity;->access$100(Lcom/miui/personalassistant/stock/home/HomeActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/personalassistant/util/Util;->sendUpdateScreenBroadcast(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method
