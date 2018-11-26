.class public Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$Config;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public componentNames:Ljava/util/ArrayList;

.field public endTime:J

.field public errorText:Ljava/lang/String;

.field public flashEndTime:J

.field public flashStartTime:J

.field public icon1:Landroid/graphics/Bitmap;

.field public icon2:Landroid/graphics/Bitmap;

.field public isFlashing:Z

.field public isFour:Z

.field public packageName:Ljava/lang/String;

.field public startTime:J

.field public text:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$Config;->isFour:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$Config;->componentNames:Ljava/util/ArrayList;

    return-void
.end method
