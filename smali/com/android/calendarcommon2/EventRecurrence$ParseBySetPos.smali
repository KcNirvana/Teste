.class Lcom/android/calendarcommon2/EventRecurrence$ParseBySetPos;
.super Lcom/android/calendarcommon2/EventRecurrence$PartParser;
.source "EventRecurrence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendarcommon2/EventRecurrence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParseBySetPos"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/calendarcommon2/EventRecurrence$PartParser;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calendarcommon2/EventRecurrence$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/calendarcommon2/EventRecurrence$ParseBySetPos;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePart(Ljava/lang/String;Lcom/android/calendarcommon2/EventRecurrence;)I
    .locals 4

    const/high16 v1, -0x80000000

    const v2, 0x7fffffff

    const/4 v3, 0x1

    invoke-static {p1, v1, v2, v3}, Lcom/android/calendarcommon2/EventRecurrence$ParseBySetPos;->parseNumberList(Ljava/lang/String;IIZ)[I

    move-result-object v0

    iput-object v0, p2, Lcom/android/calendarcommon2/EventRecurrence;->bysetpos:[I

    array-length v1, v0

    iput v1, p2, Lcom/android/calendarcommon2/EventRecurrence;->bysetposCount:I

    const/16 v1, 0x1000

    return v1
.end method
