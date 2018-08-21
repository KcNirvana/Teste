.class public Lcom/miui/home/launcher/assistant/module/carditem/SportItem$SportInfo;
.super Ljava/lang/Object;
.source "SportItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/assistant/module/carditem/SportItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SportInfo"
.end annotation


# instance fields
.field public cal:Ljava/lang/String;

.field public contentUri:Ljava/lang/String;

.field public desc:Ljava/lang/String;

.field public exirationTime:Ljava/lang/String;

.field public pkgName:Ljava/lang/String;

.field final synthetic this$0:Lcom/miui/home/launcher/assistant/module/carditem/SportItem;

.field public title:Ljava/lang/String;

.field public unit:Ljava/lang/String;

.field public updateTime:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/assistant/module/carditem/SportItem;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/module/carditem/SportItem$SportInfo;->this$0:Lcom/miui/home/launcher/assistant/module/carditem/SportItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
