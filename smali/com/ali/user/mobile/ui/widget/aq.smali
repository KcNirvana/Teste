.class public Lcom/ali/user/mobile/ui/widget/aq;
.super Ljava/lang/Object;
.source "PopMenuItem.java"


# instance fields
.field private a:Ljava/lang/CharSequence;

.field private b:I

.field private c:Landroid/graphics/drawable/Drawable;

.field private d:I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/ali/user/mobile/ui/widget/aq;->b:I

    iput-object p1, p0, Lcom/ali/user/mobile/ui/widget/aq;->a:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/aq;->a:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/ali/user/mobile/ui/widget/aq;->b:I

    return v0
.end method

.method public c()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/aq;->c:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/ali/user/mobile/ui/widget/aq;->d:I

    return v0
.end method
