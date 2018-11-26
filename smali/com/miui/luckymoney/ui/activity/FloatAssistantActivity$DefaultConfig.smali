.class public Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$DefaultConfig;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public componentNames:Ljava/util/ArrayList;

.field public icon:Landroid/graphics/Bitmap;

.field public text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$DefaultConfig;->componentNames:Ljava/util/ArrayList;

    return-void
.end method
