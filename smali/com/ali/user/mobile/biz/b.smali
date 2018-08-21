.class Lcom/ali/user/mobile/biz/b;
.super Landroid/widget/BaseAdapter;
.source "AliUserSdkLoginBiz.java"


# instance fields
.field final synthetic a:Lcom/ali/user/mobile/biz/a;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/biz/a;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/biz/b;->a:Lcom/ali/user/mobile/biz/a;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/biz/b;->a:Lcom/ali/user/mobile/biz/a;

    invoke-static {v0, p1, p2, p3}, Lcom/ali/user/mobile/biz/a;->a(Lcom/ali/user/mobile/biz/a;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
