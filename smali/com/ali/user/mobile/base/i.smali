.class Lcom/ali/user/mobile/base/i;
.super Ljava/lang/Object;
.source "BaseSixPasswordActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/ali/user/mobile/base/BaseSixPasswordActivity;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/base/BaseSixPasswordActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/base/i;->a:Lcom/ali/user/mobile/base/BaseSixPasswordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/base/i;->a:Lcom/ali/user/mobile/base/BaseSixPasswordActivity;

    iput-boolean p2, v0, Lcom/ali/user/mobile/base/BaseSixPasswordActivity;->optionStatus:Z

    return-void
.end method
