.class final Lcom/xiaomi/passport/ui/internal/PassportRepoImpl$invalidateCathePhoneNum$1;
.super Lkotlin/jvm/internal/Lambda;
.source "PassportCore.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/passport/ui/internal/PassportRepoImpl;->invalidateCathePhoneNum(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xa
    }
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $slotId:I


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/ui/internal/PassportRepoImpl$invalidateCathePhoneNum$1;->$context:Landroid/content/Context;

    iput p2, p0, Lcom/xiaomi/passport/ui/internal/PassportRepoImpl$invalidateCathePhoneNum$1;->$slotId:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/internal/PassportRepoImpl$invalidateCathePhoneNum$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    new-instance v0, Lcom/xiaomi/passport/v2/utils/ActivatorPhoneController;

    iget-object v1, p0, Lcom/xiaomi/passport/ui/internal/PassportRepoImpl$invalidateCathePhoneNum$1;->$context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/xiaomi/passport/v2/utils/ActivatorPhoneController;-><init>(Landroid/content/Context;)V

    iget v1, p0, Lcom/xiaomi/passport/ui/internal/PassportRepoImpl$invalidateCathePhoneNum$1;->$slotId:I

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/v2/utils/ActivatorPhoneController;->invalidateCathePhoneNum(I)V

    return-void
.end method
