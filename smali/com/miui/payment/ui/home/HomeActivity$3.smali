.class Lcom/miui/payment/ui/home/HomeActivity$3;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/payment/ui/home/HomeActivity;->setupActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/payment/ui/home/HomeActivity;


# direct methods
.method constructor <init>(Lcom/miui/payment/ui/home/HomeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/payment/ui/home/HomeActivity$3;->this$0:Lcom/miui/payment/ui/home/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/payment/ui/home/HomeActivity$3;->this$0:Lcom/miui/payment/ui/home/HomeActivity;

    invoke-static {v0}, Lcom/miui/payment/ui/home/HomeActivity;->access$500(Lcom/miui/payment/ui/home/HomeActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/payment/utils/PaymentUtil;->startSettingsActivity(Landroid/content/Context;)V

    return-void
.end method
