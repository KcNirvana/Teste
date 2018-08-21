.class public Lcom/miui/personalassistant/util/LocationUtil$ConditionInfo;
.super Ljava/lang/Object;
.source "LocationUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/personalassistant/util/LocationUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConditionInfo"
.end annotation


# instance fields
.field args:[Ljava/lang/String;

.field pkgName:Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/personalassistant/util/LocationUtil$ConditionInfo;->args:[Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/personalassistant/util/LocationUtil$ConditionInfo;->pkgName:Ljava/lang/String;

    return-void
.end method
