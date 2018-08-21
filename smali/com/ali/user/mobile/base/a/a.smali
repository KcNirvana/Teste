.class public Lcom/ali/user/mobile/base/a/a;
.super Ljava/lang/Object;
.source "ActivityUIHelper.java"


# static fields
.field static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/ali/user/mobile/base/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/ali/user/mobile/base/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ali/user/mobile/base/a/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/ali/user/mobile/base/a/b;

    invoke-direct {v0, p1}, Lcom/ali/user/mobile/base/a/b;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ali/user/mobile/base/a/a;->b:Lcom/ali/user/mobile/base/a/b;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/base/a/a;->b:Lcom/ali/user/mobile/base/a/b;

    invoke-virtual {v0}, Lcom/ali/user/mobile/base/a/b;->a()V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/base/a/a;->b:Lcom/ali/user/mobile/base/a/b;

    invoke-virtual {v0, p1}, Lcom/ali/user/mobile/base/a/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/base/a/a;->b:Lcom/ali/user/mobile/base/a/b;

    invoke-virtual {v0, p1, p2}, Lcom/ali/user/mobile/base/a/b;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 7

    iget-object v0, p0, Lcom/ali/user/mobile/base/a/a;->b:Lcom/ali/user/mobile/base/a/b;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/base/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ali/user/mobile/ui/widget/f$b;Ljava/lang/String;Lcom/ali/user/mobile/ui/widget/f$a;)V
    .locals 8

    iget-object v0, p0, Lcom/ali/user/mobile/base/a/a;->b:Lcom/ali/user/mobile/base/a/b;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/ali/user/mobile/base/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ali/user/mobile/ui/widget/f$b;Ljava/lang/String;Lcom/ali/user/mobile/ui/widget/f$a;)V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/base/a/a;->b:Lcom/ali/user/mobile/base/a/b;

    invoke-virtual {v0}, Lcom/ali/user/mobile/base/a/b;->a()V

    return-void
.end method
