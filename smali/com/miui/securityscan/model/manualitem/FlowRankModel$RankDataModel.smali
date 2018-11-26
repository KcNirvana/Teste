.class public Lcom/miui/securityscan/model/manualitem/FlowRankModel$RankDataModel;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x1804790fdc0d0510L


# instance fields
.field private aconId:I

.field final synthetic this$0:Lcom/miui/securityscan/model/manualitem/FlowRankModel;

.field private title:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/miui/securityscan/model/manualitem/FlowRankModel;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/model/manualitem/FlowRankModel$RankDataModel;->this$0:Lcom/miui/securityscan/model/manualitem/FlowRankModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/miui/securityscan/model/manualitem/FlowRankModel$RankDataModel;->aconId:I

    iput-object p3, p0, Lcom/miui/securityscan/model/manualitem/FlowRankModel$RankDataModel;->title:Ljava/lang/String;

    iput-object p4, p0, Lcom/miui/securityscan/model/manualitem/FlowRankModel$RankDataModel;->value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAconId()I
    .locals 1

    iget v0, p0, Lcom/miui/securityscan/model/manualitem/FlowRankModel$RankDataModel;->aconId:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/model/manualitem/FlowRankModel$RankDataModel;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/model/manualitem/FlowRankModel$RankDataModel;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setAconId(I)V
    .locals 0

    iput p1, p0, Lcom/miui/securityscan/model/manualitem/FlowRankModel$RankDataModel;->aconId:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/model/manualitem/FlowRankModel$RankDataModel;->title:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/model/manualitem/FlowRankModel$RankDataModel;->value:Ljava/lang/String;

    return-void
.end method
