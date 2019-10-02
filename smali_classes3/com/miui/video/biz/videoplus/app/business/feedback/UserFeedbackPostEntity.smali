.class public Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackPostEntity;
.super Ljava/lang/Object;
.source "UserFeedbackPostEntity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackPostEntity$PostBody;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPostBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackPostEntity$PostBody;
    .locals 2

    new-instance v0, Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackPostEntity$PostBody;

    invoke-direct {v0}, Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackPostEntity$PostBody;-><init>()V

    iput-object p0, v0, Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackPostEntity$PostBody;->message:Ljava/lang/String;

    iput-object p1, v0, Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackPostEntity$PostBody;->type:Ljava/lang/String;

    iput-object p2, v0, Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackPostEntity$PostBody;->contact:Ljava/lang/String;

    iput-object p3, v0, Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackPostEntity$PostBody;->ref:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    invoke-static {}, Lcom/miui/video/common/library/utils/NetParaUtils;->nonce()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object p3

    const/16 v1, 0xa

    invoke-static {p3, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p3

    iput-object p3, v0, Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackPostEntity$PostBody;->sign:Ljava/lang/String;

    iput-wide p0, v0, Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackPostEntity$PostBody;->ts:J

    iput-object p2, v0, Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackPostEntity$PostBody;->nonce:Ljava/lang/String;

    return-object v0
.end method
