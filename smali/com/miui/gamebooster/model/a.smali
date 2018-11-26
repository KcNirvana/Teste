.class public Lcom/miui/gamebooster/model/a;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private kE:I

.field private kF:Lcom/miui/gamebooster/constants/EnumCollection$GameBoxType;


# direct methods
.method public constructor <init>(Lcom/miui/gamebooster/constants/EnumCollection$GameBoxType;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/gamebooster/model/a;->kF:Lcom/miui/gamebooster/constants/EnumCollection$GameBoxType;

    iput p2, p0, Lcom/miui/gamebooster/model/a;->kE:I

    return-void
.end method


# virtual methods
.method public my()I
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/model/a;->kE:I

    return v0
.end method

.method public mz()Lcom/miui/gamebooster/constants/EnumCollection$GameBoxType;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/model/a;->kF:Lcom/miui/gamebooster/constants/EnumCollection$GameBoxType;

    return-object v0
.end method
