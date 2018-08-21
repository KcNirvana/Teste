.class Lcom/ali/user/mobile/register/ui/i;
.super Ljava/lang/Object;
.source "RegPurePhoneActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ali/user/mobile/register/ui/RegPurePhoneActivity;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/register/ui/RegPurePhoneActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/register/ui/i;->a:Lcom/ali/user/mobile/register/ui/RegPurePhoneActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/i;->a:Lcom/ali/user/mobile/register/ui/RegPurePhoneActivity;

    invoke-virtual {v0, p1}, Lcom/ali/user/mobile/register/ui/RegPurePhoneActivity;->closeInputMethod(Landroid/view/View;)V

    return-void
.end method
