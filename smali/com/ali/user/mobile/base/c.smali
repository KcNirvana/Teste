.class Lcom/ali/user/mobile/base/c;
.super Ljava/lang/Object;
.source "BackgroundLoginActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/ali/user/mobile/base/BackgroundLoginActivity;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/base/BackgroundLoginActivity;I)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/base/c;->b:Lcom/ali/user/mobile/base/BackgroundLoginActivity;

    iput p2, p0, Lcom/ali/user/mobile/base/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/ali/user/mobile/base/c;->b:Lcom/ali/user/mobile/base/BackgroundLoginActivity;

    iget v1, p0, Lcom/ali/user/mobile/base/c;->a:I

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/base/BackgroundLoginActivity;->setResult(I)V

    iget-object v0, p0, Lcom/ali/user/mobile/base/c;->b:Lcom/ali/user/mobile/base/BackgroundLoginActivity;

    invoke-virtual {v0}, Lcom/ali/user/mobile/base/BackgroundLoginActivity;->finish()V

    return-void
.end method
