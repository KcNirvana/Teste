.class Lcom/ali/user/mobile/ui/widget/aj;
.super Ljava/lang/Object;
.source "AUPhoneInputBox.java"

# interfaces
.implements Lcom/ali/user/mobile/register/region/b$a;


# instance fields
.field final synthetic a:Lcom/ali/user/mobile/ui/widget/ai;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/ui/widget/ai;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/ui/widget/aj;->a:Lcom/ali/user/mobile/ui/widget/ai;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/aj;->a:Lcom/ali/user/mobile/ui/widget/ai;

    iget-object v0, v0, Lcom/ali/user/mobile/ui/widget/ai;->a:Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;

    invoke-static {v0}, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->access$300(Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;)Lcom/ali/user/mobile/base/BaseActivity;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/base/BaseActivity;->showProgress(Ljava/lang/String;)V

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/aj;->a:Lcom/ali/user/mobile/ui/widget/ai;

    iget-object v0, v0, Lcom/ali/user/mobile/ui/widget/ai;->a:Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;

    invoke-static {v0}, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->access$300(Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;)Lcom/ali/user/mobile/base/BaseActivity;

    move-result-object v0

    const/16 v1, 0xbb8

    invoke-virtual {v0, p2, v1}, Lcom/ali/user/mobile/base/BaseActivity;->toast(Ljava/lang/String;I)V

    return-void
.end method

.method public a(Lcom/ali/user/mobile/register/region/RegionInfo;)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/aj;->a:Lcom/ali/user/mobile/ui/widget/ai;

    iget-object v0, v0, Lcom/ali/user/mobile/ui/widget/ai;->a:Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;

    iget-object v1, p1, Lcom/ali/user/mobile/register/region/RegionInfo;->mRegionNumber:Ljava/lang/String;

    iget-object v2, p1, Lcom/ali/user/mobile/register/region/RegionInfo;->mRegionName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->access$400(Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;Ljava/lang/String;Ljava/lang/String;)Z

    const-string/jumbo v0, "UC-ZC-161209-01"

    const-string/jumbo v1, "locationResult"

    iget-object v2, p0, Lcom/ali/user/mobile/ui/widget/aj;->a:Lcom/ali/user/mobile/ui/widget/ai;

    iget-object v2, v2, Lcom/ali/user/mobile/ui/widget/ai;->a:Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;

    invoke-static {v2}, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->access$000(Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/ali/user/mobile/register/region/RegionInfo;->mRegionNumber:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/ali/user/mobile/register/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/aj;->a:Lcom/ali/user/mobile/ui/widget/ai;

    iget-object v0, v0, Lcom/ali/user/mobile/ui/widget/ai;->a:Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;

    invoke-static {v0}, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->access$500(Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/aj;->a:Lcom/ali/user/mobile/ui/widget/ai;

    iget-object v0, v0, Lcom/ali/user/mobile/ui/widget/ai;->a:Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;

    invoke-static {v0}, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->access$300(Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;)Lcom/ali/user/mobile/base/BaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/base/BaseActivity;->dismissProgress()V

    return-void
.end method
