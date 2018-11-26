.class public Lcom/miui/common/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static aCu:I

.field public static aCv:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lcom/miui/common/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/common/a;->TAG:Ljava/lang/String;

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const-string/jumbo v0, "android.system.OsConstants"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v0, "AF_INET"

    const-class v2, Ljava/lang/Integer;

    invoke-static {v1, v0, v2}, Lcom/miui/a/c/a;->btF(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/miui/common/a;->aCu:I

    const-string/jumbo v0, "AF_INET6"

    const-class v2, Ljava/lang/Integer;

    invoke-static {v1, v0, v2}, Lcom/miui/a/c/a;->btF(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/miui/common/a;->aCv:I

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "libcore.io.OsConstants"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v0, "AF_INET"

    const-class v2, Ljava/lang/Integer;

    invoke-static {v1, v0, v2}, Lcom/miui/a/c/a;->btF(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/miui/common/a;->aCu:I

    const-string/jumbo v0, "AF_INET6"

    const-class v2, Ljava/lang/Integer;

    invoke-static {v1, v0, v2}, Lcom/miui/a/c/a;->btF(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/miui/common/a;->aCv:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/miui/common/a;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "OsConstants"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
