.class Lcom/ali/user/mobile/biz/c;
.super Ljava/lang/Object;
.source "AliUserSdkLoginBiz.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ali/user/mobile/biz/a;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/biz/a;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/biz/c;->a:Lcom/ali/user/mobile/biz/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const-string/jumbo v0, "UC-GY-161225-01"

    const-string/jumbo v1, "loginlanguage"

    const-string/jumbo v2, ""

    const/4 v3, 0x0

    const-string/jumbo v4, "click"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/ali/user/mobile/e/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
