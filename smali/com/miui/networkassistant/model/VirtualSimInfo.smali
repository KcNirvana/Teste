.class public Lcom/miui/networkassistant/model/VirtualSimInfo;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private mAssistBalance:J

.field private mAssistBalanceTitle:Ljava/lang/String;

.field private mAssistCenter:J

.field private mAssistCenterTitle:Ljava/lang/String;

.field private mAssistKey1:J

.field private mAssistKey1Title:Ljava/lang/String;

.field private mAssistKey2:J

.field private mAssistKey2Title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    const-wide/16 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v2, p0, Lcom/miui/networkassistant/model/VirtualSimInfo;->mAssistKey1:J

    iput-wide v2, p0, Lcom/miui/networkassistant/model/VirtualSimInfo;->mAssistKey2:J

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/miui/networkassistant/model/VirtualSimInfo;->mAssistBalance:J

    iput-wide v2, p0, Lcom/miui/networkassistant/model/VirtualSimInfo;->mAssistCenter:J

    return-void
.end method


# virtual methods
.method public getAssistBalance()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/networkassistant/model/VirtualSimInfo;->mAssistBalance:J

    return-wide v0
.end method

.method public getAssistBalanceTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/model/VirtualSimInfo;->mAssistBalanceTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getAssistCenter()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/networkassistant/model/VirtualSimInfo;->mAssistCenter:J

    return-wide v0
.end method

.method public getAssistCenterTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/model/VirtualSimInfo;->mAssistCenterTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getAssistKey1()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/networkassistant/model/VirtualSimInfo;->mAssistKey1:J

    return-wide v0
.end method

.method public getAssistKey1Title()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/model/VirtualSimInfo;->mAssistKey1Title:Ljava/lang/String;

    return-object v0
.end method

.method public getAssistKey2()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/networkassistant/model/VirtualSimInfo;->mAssistKey2:J

    return-wide v0
.end method

.method public getAssistKey2Title()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/model/VirtualSimInfo;->mAssistKey2Title:Ljava/lang/String;

    return-object v0
.end method

.method public setAssistBalance(J)V
    .locals 1

    iput-wide p1, p0, Lcom/miui/networkassistant/model/VirtualSimInfo;->mAssistBalance:J

    return-void
.end method

.method public setAssistBalanceTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/model/VirtualSimInfo;->mAssistBalanceTitle:Ljava/lang/String;

    return-void
.end method

.method public setAssistCenter(J)V
    .locals 1

    iput-wide p1, p0, Lcom/miui/networkassistant/model/VirtualSimInfo;->mAssistCenter:J

    return-void
.end method

.method public setAssistCenterTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/model/VirtualSimInfo;->mAssistCenterTitle:Ljava/lang/String;

    return-void
.end method

.method public setAssistKey1(J)V
    .locals 1

    iput-wide p1, p0, Lcom/miui/networkassistant/model/VirtualSimInfo;->mAssistKey1:J

    return-void
.end method

.method public setAssistKey1Title(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/model/VirtualSimInfo;->mAssistKey1Title:Ljava/lang/String;

    return-void
.end method

.method public setAssistKey2(J)V
    .locals 1

    iput-wide p1, p0, Lcom/miui/networkassistant/model/VirtualSimInfo;->mAssistKey2:J

    return-void
.end method

.method public setAssistKey2Title(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/model/VirtualSimInfo;->mAssistKey2Title:Ljava/lang/String;

    return-void
.end method
