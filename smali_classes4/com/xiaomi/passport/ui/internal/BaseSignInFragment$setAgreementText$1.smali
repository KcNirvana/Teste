.class public final Lcom/xiaomi/passport/ui/internal/BaseSignInFragment$setAgreementText$1;
.super Landroid/text/style/ClickableSpan;
.source "FragmentBaseSign.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/passport/ui/internal/BaseSignInFragment;->setAgreementText()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/xiaomi/passport/ui/internal/BaseSignInFragment$setAgreementText$1",
        "Landroid/text/style/ClickableSpan;",
        "(Lcom/xiaomi/passport/ui/internal/BaseSignInFragment;Ljava/util/Map$Entry;)V",
        "onClick",
        "",
        "widget",
        "Landroid/view/View;",
        "passportui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xa
    }
.end annotation


# instance fields
.field final synthetic $license:Ljava/util/Map$Entry;

.field final synthetic this$0:Lcom/xiaomi/passport/ui/internal/BaseSignInFragment;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/internal/BaseSignInFragment;Ljava/util/Map$Entry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/xiaomi/passport/ui/internal/BaseSignInFragment$setAgreementText$1;->this$0:Lcom/xiaomi/passport/ui/internal/BaseSignInFragment;

    iput-object p2, p0, Lcom/xiaomi/passport/ui/internal/BaseSignInFragment$setAgreementText$1;->$license:Ljava/util/Map$Entry;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/xiaomi/passport/ui/internal/BaseSignInFragment$setAgreementText$1;->this$0:Lcom/xiaomi/passport/ui/internal/BaseSignInFragment;

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/BaseSignInFragment$setAgreementText$1;->this$0:Lcom/xiaomi/passport/ui/internal/BaseSignInFragment;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/internal/BaseSignInFragment;->getMWebAuth()Lcom/xiaomi/passport/ui/internal/WebAuth;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/ui/internal/BaseSignInFragment$setAgreementText$1;->$license:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/passport/ui/internal/URLLicense;

    invoke-virtual {v1}, Lcom/xiaomi/passport/ui/internal/URLLicense;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/ui/internal/WebAuth;->getNotificationFragment(Ljava/lang/String;)Lcom/xiaomi/passport/ui/internal/SignInFragment;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/passport/ui/internal/BaseSignInFragment;->gotoFragment(Landroid/support/v4/app/Fragment;Z)V

    return-void
.end method
