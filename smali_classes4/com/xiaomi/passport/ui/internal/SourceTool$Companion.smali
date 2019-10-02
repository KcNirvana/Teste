.class public final Lcom/xiaomi/passport/ui/internal/SourceTool$Companion;
.super Ljava/lang/Object;
.source "Source.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/passport/ui/internal/SourceTool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\t\u001a\u00020\nR\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/xiaomi/passport/ui/internal/SourceTool$Companion;",
        "",
        "()V",
        "ENABLE_TEST",
        "",
        "getENABLE_TEST",
        "()Z",
        "setENABLE_TEST",
        "(Z)V",
        "enableTest",
        "",
        "passportui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xa
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/passport/ui/internal/SourceTool$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final enableTest()V
    .locals 2

    move-object v0, p0

    check-cast v0, Lcom/xiaomi/passport/ui/internal/SourceTool$Companion;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/ui/internal/SourceTool$Companion;->setENABLE_TEST(Z)V

    return-void
.end method

.method public final getENABLE_TEST()Z
    .locals 1

    invoke-static {}, Lcom/xiaomi/passport/ui/internal/SourceTool;->access$getENABLE_TEST$cp()Z

    move-result v0

    return v0
.end method

.method public final setENABLE_TEST(Z)V
    .locals 0

    invoke-static {p1}, Lcom/xiaomi/passport/ui/internal/SourceTool;->access$setENABLE_TEST$cp(Z)V

    return-void
.end method
