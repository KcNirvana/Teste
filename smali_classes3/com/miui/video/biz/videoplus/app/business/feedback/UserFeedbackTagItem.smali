.class public Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackTagItem;
.super Ljava/lang/Object;
.source "UserFeedbackTagItem.java"


# instance fields
.field private isSelected:Z

.field private tagName:Ljava/lang/String;

.field private tagType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackTagItem;->tagName:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackTagItem;->tagType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getTagName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackTagItem;->tagName:Ljava/lang/String;

    return-object v0
.end method

.method public getTagType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackTagItem;->tagType:Ljava/lang/String;

    return-object v0
.end method

.method public isSelected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackTagItem;->isSelected:Z

    return v0
.end method

.method public setSelected(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackTagItem;->isSelected:Z

    return-void
.end method

.method public setTagName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackTagItem;->tagName:Ljava/lang/String;

    return-void
.end method

.method public setTagType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackTagItem;->tagType:Ljava/lang/String;

    return-void
.end method
