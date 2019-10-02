.class public Lcom/kaltura/playkit/PKLog;
.super Ljava/lang/Object;
.source "PKLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kaltura/playkit/PKLog$Level;
    }
.end annotation


# static fields
.field private static globalLevel:I = 0x3


# instance fields
.field private level:I

.field public final tag:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/kaltura/playkit/PKLog;->level:I

    invoke-static {p1}, Lcom/kaltura/playkit/PKLog;->shortenTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kaltura/playkit/PKLog;->tag:Ljava/lang/String;

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget v0, Lcom/kaltura/playkit/PKLog;->globalLevel:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget v0, Lcom/kaltura/playkit/PKLog;->globalLevel:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static get(Ljava/lang/String;)Lcom/kaltura/playkit/PKLog;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/kaltura/playkit/PKLog;

    invoke-direct {v0, p0}, Lcom/kaltura/playkit/PKLog;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget v0, Lcom/kaltura/playkit/PKLog;->globalLevel:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static setGlobalLevel(Lcom/kaltura/playkit/PKLog$Level;)V
    .locals 0

    iget p0, p0, Lcom/kaltura/playkit/PKLog$Level;->value:I

    sput p0, Lcom/kaltura/playkit/PKLog;->globalLevel:I

    return-void
.end method

.method private static shortenTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x17

    if-le v0, v1, :cond_0

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "%s_%02x"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PKLog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Log tag too long; shortening \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' to \'"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    return-object p0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget v0, Lcom/kaltura/playkit/PKLog;->globalLevel:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget v0, Lcom/kaltura/playkit/PKLog;->globalLevel:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;)V
    .locals 2

    iget v0, p0, Lcom/kaltura/playkit/PKLog;->level:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    sget v0, Lcom/kaltura/playkit/PKLog;->globalLevel:I

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/kaltura/playkit/PKLog;->tag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    iget v0, p0, Lcom/kaltura/playkit/PKLog;->level:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    sget v0, Lcom/kaltura/playkit/PKLog;->globalLevel:I

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/kaltura/playkit/PKLog;->tag:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 2

    iget v0, p0, Lcom/kaltura/playkit/PKLog;->level:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    sget v0, Lcom/kaltura/playkit/PKLog;->globalLevel:I

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/kaltura/playkit/PKLog;->tag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    iget v0, p0, Lcom/kaltura/playkit/PKLog;->level:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    sget v0, Lcom/kaltura/playkit/PKLog;->globalLevel:I

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/kaltura/playkit/PKLog;->tag:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 2

    iget v0, p0, Lcom/kaltura/playkit/PKLog;->level:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    sget v0, Lcom/kaltura/playkit/PKLog;->globalLevel:I

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/kaltura/playkit/PKLog;->tag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public i(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    iget v0, p0, Lcom/kaltura/playkit/PKLog;->level:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    sget v0, Lcom/kaltura/playkit/PKLog;->globalLevel:I

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/kaltura/playkit/PKLog;->tag:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public setLevel(Lcom/kaltura/playkit/PKLog$Level;)V
    .locals 0
    .param p1    # Lcom/kaltura/playkit/PKLog$Level;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget p1, p1, Lcom/kaltura/playkit/PKLog$Level;->value:I

    iput p1, p0, Lcom/kaltura/playkit/PKLog;->level:I

    return-void
.end method

.method public v(Ljava/lang/String;)V
    .locals 2

    iget v0, p0, Lcom/kaltura/playkit/PKLog;->level:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    sget v0, Lcom/kaltura/playkit/PKLog;->globalLevel:I

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/kaltura/playkit/PKLog;->tag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public v(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    iget v0, p0, Lcom/kaltura/playkit/PKLog;->level:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    sget v0, Lcom/kaltura/playkit/PKLog;->globalLevel:I

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/kaltura/playkit/PKLog;->tag:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public w(Ljava/lang/String;)V
    .locals 2

    iget v0, p0, Lcom/kaltura/playkit/PKLog;->level:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    sget v0, Lcom/kaltura/playkit/PKLog;->globalLevel:I

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/kaltura/playkit/PKLog;->tag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    iget v0, p0, Lcom/kaltura/playkit/PKLog;->level:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    sget v0, Lcom/kaltura/playkit/PKLog;->globalLevel:I

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/kaltura/playkit/PKLog;->tag:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method
