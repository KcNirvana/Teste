.class Lcom/ali/user/mobile/register/ui/h;
.super Ljava/lang/Object;
.source "RegExistUserActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/ali/user/mobile/register/ui/RegExistUserActivity;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/register/ui/RegExistUserActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/register/ui/h;->a:Lcom/ali/user/mobile/register/ui/RegExistUserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/h;->a:Lcom/ali/user/mobile/register/ui/RegExistUserActivity;

    invoke-virtual {v0, p1}, Lcom/ali/user/mobile/register/ui/RegExistUserActivity;->closeInputMethod(Landroid/view/View;)V

    const/4 v0, 0x0

    return v0
.end method
