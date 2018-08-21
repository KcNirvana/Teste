.class public Lcom/ali/user/mobile/login/ui/a/a;
.super Landroid/widget/BaseAdapter;
.source "LoginHistoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ali/user/mobile/login/ui/a/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/BaseAdapter;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;

.field private c:Landroid/view/LayoutInflater;

.field private d:Landroid/view/View$OnLongClickListener;

.field private e:Landroid/view/View$OnClickListener;

.field private f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View$OnLongClickListener;Landroid/view/View$OnClickListener;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/View$OnLongClickListener;",
            "Landroid/view/View$OnClickListener;",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcom/ali/user/mobile/login/ui/a/a;->d:Landroid/view/View$OnLongClickListener;

    iput-object p3, p0, Lcom/ali/user/mobile/login/ui/a/a;->e:Landroid/view/View$OnClickListener;

    invoke-direct {p0, p1, p4, p5}, Lcom/ali/user/mobile/login/ui/a/a;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/ali/user/mobile/login/ui/a/a;)Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/a/a;->e:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iput-object p2, p0, Lcom/ali/user/mobile/login/ui/a/a;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/ali/user/mobile/login/ui/a/a;->b:Ljava/lang/String;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/a/a;->c:Landroid/view/LayoutInflater;

    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget v1, p0, Lcom/ali/user/mobile/login/ui/a/a;->f:I

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic b(Lcom/ali/user/mobile/login/ui/a/a;)Landroid/view/View$OnLongClickListener;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/a/a;->d:Landroid/view/View$OnLongClickListener;

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/ali/user/mobile/login/ui/a/a;->f:I

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/a/a;->a:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/a/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/a/a;->a:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/a/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-nez p2, :cond_2

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/a/a;->c:Landroid/view/LayoutInflater;

    sget v1, Lcom/ali/user/mobile/security/ui/R$layout;->alipay_security_recent_filter_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/ali/user/mobile/login/ui/a/a$a;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/login/ui/a/a$a;-><init>(Lcom/ali/user/mobile/login/ui/a/a;)V

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->name:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/ali/user/mobile/login/ui/a/a$a;->a:Landroid/widget/TextView;

    iget-object v0, v1, Lcom/ali/user/mobile/login/ui/a/a$a;->a:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/login/ui/a/a;->a(Landroid/view/View;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/ali/user/mobile/login/ui/a/a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/account/bean/UserInfo;

    invoke-virtual {v0}, Lcom/ali/user/mobile/account/bean/UserInfo;->getLogonId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ali/user/mobile/login/ui/a/a;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/ali/user/mobile/i/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/ali/user/mobile/login/ui/a/a$a;->a:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v1, Lcom/ali/user/mobile/login/ui/a/a$a;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/a/a;->e:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/ali/user/mobile/login/ui/a/b;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/login/ui/a/b;-><init>(Lcom/ali/user/mobile/login/ui/a/a;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/a/a;->d:Landroid/view/View$OnLongClickListener;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/ali/user/mobile/login/ui/a/c;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/login/ui/a/c;-><init>(Lcom/ali/user/mobile/login/ui/a/a;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_1
    return-object p2

    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/login/ui/a/a$a;

    move-object v1, v0

    goto :goto_0
.end method
