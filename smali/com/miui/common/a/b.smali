.class public Lcom/miui/common/a/b;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static azu:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static aGA(Landroid/content/Context;)V
    .locals 0

    sput-object p0, Lcom/miui/common/a/b;->azu:Landroid/content/Context;

    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 2

    sget-object v0, Lcom/miui/common/a/b;->azu:Landroid/content/Context;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Please invoke setContext before call this"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/miui/common/a/b;->azu:Landroid/content/Context;

    return-object v0
.end method
