.class Lcom/ali/user/mobile/ui/widget/ah;
.super Landroid/text/method/NumberKeyListener;
.source "AUPhoneInputBox.java"


# instance fields
.field final synthetic a:Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/ui/widget/ah;->a:Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;

    invoke-direct {p0}, Landroid/text/method/NumberKeyListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected getAcceptedChars()[C
    .locals 1

    invoke-static {}, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->access$200()[C

    move-result-object v0

    return-object v0
.end method

.method public getInputType()I
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/ah;->a:Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;

    iget-object v0, v0, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->mPhoneInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getInputType()I

    move-result v0

    return v0
.end method
