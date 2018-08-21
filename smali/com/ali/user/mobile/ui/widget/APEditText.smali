.class public Lcom/ali/user/mobile/ui/widget/APEditText;
.super Landroid/widget/EditText;
.source "APEditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ali/user/mobile/ui/widget/APEditText$a;
    }
.end annotation


# static fields
.field private static d:Lcom/ali/user/mobile/ui/widget/b/a;


# instance fields
.field private a:Z

.field private b:I

.field private c:F

.field public listener:Lcom/ali/user/mobile/ui/widget/APEditText$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-boolean v0, p0, Lcom/ali/user/mobile/ui/widget/APEditText;->a:Z

    iput v0, p0, Lcom/ali/user/mobile/ui/widget/APEditText;->b:I

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/APEditText;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/ali/user/mobile/ui/widget/APEditText;->c:F

    invoke-direct {p0}, Lcom/ali/user/mobile/ui/widget/APEditText;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v0, p0, Lcom/ali/user/mobile/ui/widget/APEditText;->a:Z

    iput v0, p0, Lcom/ali/user/mobile/ui/widget/APEditText;->b:I

    invoke-direct {p0, p1, p2}, Lcom/ali/user/mobile/ui/widget/APEditText;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v0, p0, Lcom/ali/user/mobile/ui/widget/APEditText;->a:Z

    iput v0, p0, Lcom/ali/user/mobile/ui/widget/APEditText;->b:I

    invoke-direct {p0, p1, p2}, Lcom/ali/user/mobile/ui/widget/APEditText;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a()V
    .locals 1

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/APEditText;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/ali/user/mobile/ui/widget/APEditText;->c:F

    invoke-direct {p0}, Lcom/ali/user/mobile/ui/widget/APEditText;->a()V

    return-void
.end method

.method public static getTextSizeGearGetter()Lcom/ali/user/mobile/ui/widget/b/a;
    .locals 1

    sget-object v0, Lcom/ali/user/mobile/ui/widget/APEditText;->d:Lcom/ali/user/mobile/ui/widget/b/a;

    return-object v0
.end method

.method public static setTextSizeGearGetter(Lcom/ali/user/mobile/ui/widget/b/a;)V
    .locals 0

    sput-object p0, Lcom/ali/user/mobile/ui/widget/APEditText;->d:Lcom/ali/user/mobile/ui/widget/b/a;

    return-void
.end method


# virtual methods
.method public getEmojiSize()I
    .locals 3

    iget v0, p0, Lcom/ali/user/mobile/ui/widget/APEditText;->b:I

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/APEditText;->getTextSize()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/APEditText;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Lcom/ali/user/mobile/i/c;->a(Landroid/content/Context;F)I

    move-result v1

    add-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/ali/user/mobile/ui/widget/APEditText;->b:I

    goto :goto_0
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/ali/user/mobile/ui/widget/APEditText;->a:Z

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->onTextChanged(Ljava/lang/CharSequence;III)V

    :goto_0
    return-void

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->onTextChanged(Ljava/lang/CharSequence;III)V

    goto :goto_0
.end method

.method public onTextContextMenuItem(I)Z
    .locals 1

    const v0, 0x1020022

    if-ne p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/EditText;->onTextContextMenuItem(I)Z

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTextContextMenuItem(I)Z

    move-result v0

    goto :goto_0
.end method

.method public setEmojiSize(I)V
    .locals 0

    iput p1, p0, Lcom/ali/user/mobile/ui/widget/APEditText;->b:I

    return-void
.end method

.method public setPasteListener(Lcom/ali/user/mobile/ui/widget/APEditText$a;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/ui/widget/APEditText;->listener:Lcom/ali/user/mobile/ui/widget/APEditText$a;

    return-void
.end method

.method public setSupportEmoji(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ali/user/mobile/ui/widget/APEditText;->a:Z

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void
.end method

.method public setTextSize(IF)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->setTextSize(IF)V

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/APEditText;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/ali/user/mobile/ui/widget/APEditText;->c:F

    invoke-direct {p0}, Lcom/ali/user/mobile/ui/widget/APEditText;->a()V

    return-void
.end method
