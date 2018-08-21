.class Lcom/ali/user/mobile/ui/widget/keyboard/e;
.super Ljava/lang/Object;
.source "APSafeEditText.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/ui/widget/keyboard/e;->a:Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/keyboard/e;->a:Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_0
    return-void
.end method
