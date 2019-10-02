.class public final Lcom/xiaomi/passport/ui/internal/SourceTool;
.super Ljava/lang/Object;
.source "Source.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/passport/ui/internal/SourceTool$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0018\u0000 \u00032\u00020\u0001:\u0001\u0003B\u0005\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/xiaomi/passport/ui/internal/SourceTool;",
        "",
        "()V",
        "Companion",
        "passportui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xa
    }
.end annotation


# static fields
.field public static final Companion:Lcom/xiaomi/passport/ui/internal/SourceTool$Companion;

.field private static ENABLE_TEST:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/xiaomi/passport/ui/internal/SourceTool$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaomi/passport/ui/internal/SourceTool$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/xiaomi/passport/ui/internal/SourceTool;->Companion:Lcom/xiaomi/passport/ui/internal/SourceTool$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getENABLE_TEST$cp()Z
    .locals 1

    sget-boolean v0, Lcom/xiaomi/passport/ui/internal/SourceTool;->ENABLE_TEST:Z

    return v0
.end method

.method public static final synthetic access$setENABLE_TEST$cp(Z)V
    .locals 0

    sput-boolean p0, Lcom/xiaomi/passport/ui/internal/SourceTool;->ENABLE_TEST:Z

    return-void
.end method
