.class Lcom/miui/payment/ui/home/HomeActivity$1;
.super Landroid/database/ContentObserver;
.source "HomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/payment/ui/home/HomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/payment/ui/home/HomeActivity;


# direct methods
.method constructor <init>(Lcom/miui/payment/ui/home/HomeActivity;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/payment/ui/home/HomeActivity$1;->this$0:Lcom/miui/payment/ui/home/HomeActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    iget-object v0, p0, Lcom/miui/payment/ui/home/HomeActivity$1;->this$0:Lcom/miui/payment/ui/home/HomeActivity;

    invoke-static {v0}, Lcom/miui/payment/ui/home/HomeActivity;->access$000(Lcom/miui/payment/ui/home/HomeActivity;)V

    return-void
.end method
