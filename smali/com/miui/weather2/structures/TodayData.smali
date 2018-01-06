.class public Lcom/miui/weather2/structures/TodayData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/miui/weather2/structures/TodayData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mSunRiseAfterTommrorrowLocal:Ljava/lang/String;

.field private mSunRiseAndSetNum:I

.field private mSunRiseTodayLocal:Ljava/lang/String;

.field private mSunRiseTommrorowLocal:Ljava/lang/String;

.field private mSunSetAfterTommrorowLocal:Ljava/lang/String;

.field private mSunSetTodayLocal:Ljava/lang/String;

.field private mSunSetTommrorowLocal:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/weather2/structures/TodayData$1;

    invoke-direct {v0}, Lcom/miui/weather2/structures/TodayData$1;-><init>()V

    sput-object v0, Lcom/miui/weather2/structures/TodayData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/structures/TodayData;->mSunRiseTodayLocal:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/structures/TodayData;->mSunSetTodayLocal:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/structures/TodayData;->mSunRiseTommrorowLocal:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/structures/TodayData;->mSunSetTommrorowLocal:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/structures/TodayData;->mSunRiseAfterTommrorrowLocal:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/structures/TodayData;->mSunSetAfterTommrorowLocal:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/weather2/structures/TodayData;->mSunRiseAndSetNum:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/miui/weather2/structures/TodayData$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/weather2/structures/TodayData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSunRiseAfterTommrorrowLocal()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/TodayData;->mSunRiseAfterTommrorrowLocal:Ljava/lang/String;

    return-object v0
.end method

.method public getSunRiseAfterTomorrowNum(Landroid/content/Context;)J
    .locals 4

    iget-object v0, p0, Lcom/miui/weather2/structures/TodayData;->mSunRiseAfterTommrorrowLocal:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/miui/weather2/tools/bi;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/miui/weather2/tools/bi;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSunRiseAndSetNum()I
    .locals 1

    iget v0, p0, Lcom/miui/weather2/structures/TodayData;->mSunRiseAndSetNum:I

    return v0
.end method

.method public getSunRiseTodayLocal()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/TodayData;->mSunRiseTodayLocal:Ljava/lang/String;

    return-object v0
.end method

.method public getSunRiseTodayNum(Landroid/content/Context;)J
    .locals 4

    iget-object v0, p0, Lcom/miui/weather2/structures/TodayData;->mSunRiseTodayLocal:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/miui/weather2/tools/bi;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/miui/weather2/tools/bi;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSunRiseTomorrowNum(Landroid/content/Context;)J
    .locals 4

    iget-object v0, p0, Lcom/miui/weather2/structures/TodayData;->mSunRiseTommrorowLocal:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/miui/weather2/tools/bi;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/miui/weather2/tools/bi;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSunSetAfterTommrorowLocal()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/TodayData;->mSunSetAfterTommrorowLocal:Ljava/lang/String;

    return-object v0
.end method

.method public getSunSetAfterTomorrowNum(Landroid/content/Context;)J
    .locals 4

    iget-object v0, p0, Lcom/miui/weather2/structures/TodayData;->mSunSetAfterTommrorowLocal:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/miui/weather2/tools/bi;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/miui/weather2/tools/bi;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSunSetTodayLocal()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/TodayData;->mSunSetTodayLocal:Ljava/lang/String;

    return-object v0
.end method

.method public getSunSetTodayNum(Landroid/content/Context;)J
    .locals 4

    iget-object v0, p0, Lcom/miui/weather2/structures/TodayData;->mSunSetTodayLocal:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/miui/weather2/tools/bi;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/miui/weather2/tools/bi;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSunSetTomorrowNum(Landroid/content/Context;)J
    .locals 4

    iget-object v0, p0, Lcom/miui/weather2/structures/TodayData;->mSunSetTommrorowLocal:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/miui/weather2/tools/bi;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/miui/weather2/tools/bi;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public setSunRiseAfterTommrorrowLocal(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/TodayData;->mSunRiseAfterTommrorrowLocal:Ljava/lang/String;

    return-void
.end method

.method public setSunRiseAndSetNum(I)V
    .locals 0

    iput p1, p0, Lcom/miui/weather2/structures/TodayData;->mSunRiseAndSetNum:I

    return-void
.end method

.method public setSunRiseTodayLocal(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/TodayData;->mSunRiseTodayLocal:Ljava/lang/String;

    return-void
.end method

.method public setSunRiseTomorrowLocal(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/TodayData;->mSunRiseTommrorowLocal:Ljava/lang/String;

    return-void
.end method

.method public setSunSetAfterTommrorowLocal(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/TodayData;->mSunSetAfterTommrorowLocal:Ljava/lang/String;

    return-void
.end method

.method public setSunSetTodayLocal(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/TodayData;->mSunSetTodayLocal:Ljava/lang/String;

    return-void
.end method

.method public setSunSetTomorrowLocal(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/TodayData;->mSunSetTommrorowLocal:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/16 v2, 0x27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TodayData{mSunRiseTodayLocal=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/structures/TodayData;->mSunRiseTodayLocal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSunSetTodayLocal=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/structures/TodayData;->mSunSetTodayLocal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSunRiseTommrorowLocal=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/structures/TodayData;->mSunRiseTommrorowLocal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSunSetTommrorowLocal=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/structures/TodayData;->mSunSetTommrorowLocal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/TodayData;->mSunRiseTodayLocal:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/weather2/structures/TodayData;->mSunSetTodayLocal:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/weather2/structures/TodayData;->mSunRiseTommrorowLocal:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/weather2/structures/TodayData;->mSunSetTommrorowLocal:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/weather2/structures/TodayData;->mSunRiseAfterTommrorrowLocal:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/weather2/structures/TodayData;->mSunSetAfterTommrorowLocal:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/miui/weather2/structures/TodayData;->mSunRiseAndSetNum:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
