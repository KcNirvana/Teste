.class Lcom/ali/user/mobile/ui/widget/z;
.super Ljava/lang/Object;
.source "AUInputBox.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/ali/user/mobile/ui/widget/AUInputBox;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/ui/widget/AUInputBox;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/ui/widget/z;->b:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    iput-object p2, p0, Lcom/ali/user/mobile/ui/widget/z;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/ali/user/mobile/ui/widget/z;->b:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-static {v1}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->access$000(Lcom/ali/user/mobile/ui/widget/AUInputBox;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v1, p0, Lcom/ali/user/mobile/ui/widget/z;->b:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-static {v1}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->access$000(Lcom/ali/user/mobile/ui/widget/AUInputBox;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->getHitRect(Landroid/graphics/Rect;)V

    iget v1, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v1, v1, -0x64

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v1, v1, 0x64

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/lit16 v1, v1, -0xc8

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget v1, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v1, v1, 0x64

    iput v1, v0, Landroid/graphics/Rect;->right:I

    new-instance v1, Landroid/view/TouchDelegate;

    iget-object v2, p0, Lcom/ali/user/mobile/ui/widget/z;->b:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-static {v2}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->access$000(Lcom/ali/user/mobile/ui/widget/AUInputBox;)Landroid/widget/EditText;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/z;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    return-void
.end method
