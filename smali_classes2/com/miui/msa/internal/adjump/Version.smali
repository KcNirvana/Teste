.class public Lcom/miui/msa/internal/adjump/Version;
.super Ljava/lang/Object;
.source "Version.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/miui/msa/internal/adjump/Version;",
        ">;"
    }
.end annotation


# static fields
.field public static final ZERO:Lcom/miui/msa/internal/adjump/Version;


# instance fields
.field private mBuild:I

.field private mMajor:I

.field private mMinor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/msa/internal/adjump/Version;

    invoke-direct {v0}, Lcom/miui/msa/internal/adjump/Version;-><init>()V

    sput-object v0, Lcom/miui/msa/internal/adjump/Version;->ZERO:Lcom/miui/msa/internal/adjump/Version;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/msa/internal/adjump/Version;->mMajor:I

    iput v0, p0, Lcom/miui/msa/internal/adjump/Version;->mMinor:I

    iput v0, p0, Lcom/miui/msa/internal/adjump/Version;->mBuild:I

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/msa/internal/adjump/Version;->mMajor:I

    iput v0, p0, Lcom/miui/msa/internal/adjump/Version;->mMinor:I

    iput v0, p0, Lcom/miui/msa/internal/adjump/Version;->mBuild:I

    iput p1, p0, Lcom/miui/msa/internal/adjump/Version;->mMajor:I

    iput p2, p0, Lcom/miui/msa/internal/adjump/Version;->mMinor:I

    iput p3, p0, Lcom/miui/msa/internal/adjump/Version;->mBuild:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/msa/internal/adjump/Version;->mMajor:I

    iput v0, p0, Lcom/miui/msa/internal/adjump/Version;->mMinor:I

    iput v0, p0, Lcom/miui/msa/internal/adjump/Version;->mBuild:I

    :try_start_0
    const-string v1, "\\."

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/msa/internal/adjump/Version;->mMajor:I

    const/4 v0, 0x1

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/msa/internal/adjump/Version;->mMinor:I

    const/4 v0, 0x2

    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/miui/msa/internal/adjump/Version;->mBuild:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/miui/msa/internal/adjump/Version;)I
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    iget v0, p0, Lcom/miui/msa/internal/adjump/Version;->mMajor:I

    iget v1, p1, Lcom/miui/msa/internal/adjump/Version;->mMajor:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/miui/msa/internal/adjump/Version;->mMajor:I

    iget p1, p1, Lcom/miui/msa/internal/adjump/Version;->mMajor:I

    sub-int/2addr v0, p1

    return v0

    :cond_1
    iget v0, p0, Lcom/miui/msa/internal/adjump/Version;->mMinor:I

    iget v1, p1, Lcom/miui/msa/internal/adjump/Version;->mMinor:I

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/miui/msa/internal/adjump/Version;->mMinor:I

    iget p1, p1, Lcom/miui/msa/internal/adjump/Version;->mMinor:I

    sub-int/2addr v0, p1

    return v0

    :cond_2
    iget v0, p0, Lcom/miui/msa/internal/adjump/Version;->mBuild:I

    iget p1, p1, Lcom/miui/msa/internal/adjump/Version;->mBuild:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/miui/msa/internal/adjump/Version;

    invoke-virtual {p0, p1}, Lcom/miui/msa/internal/adjump/Version;->compareTo(Lcom/miui/msa/internal/adjump/Version;)I

    move-result p1

    return p1
.end method

.method public equalsIgnoreBuild(Lcom/miui/msa/internal/adjump/Version;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget v1, p0, Lcom/miui/msa/internal/adjump/Version;->mMajor:I

    iget v2, p1, Lcom/miui/msa/internal/adjump/Version;->mMajor:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/miui/msa/internal/adjump/Version;->mMinor:I

    iget p1, p1, Lcom/miui/msa/internal/adjump/Version;->mMinor:I

    if-ne v1, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/miui/msa/internal/adjump/Version;->mMajor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/msa/internal/adjump/Version;->mMinor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/msa/internal/adjump/Version;->mBuild:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
