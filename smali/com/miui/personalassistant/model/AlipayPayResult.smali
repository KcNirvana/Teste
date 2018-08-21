.class public Lcom/miui/personalassistant/model/AlipayPayResult;
.super Ljava/lang/Object;
.source "AlipayPayResult.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/personalassistant/model/AlipayPayResult$AlipayExtraMoney;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x6efaac93ae0e7b86L


# instance fields
.field public ad:Ljava/lang/String;

.field public extGuide:Lcom/miui/personalassistant/model/AlipayPayResult$AlipayExtraMoney;

.field public guideAction:Ljava/lang/String;

.field public guideDetail:Ljava/lang/String;

.field public originAmount:Ljava/lang/String;

.field public osFeeText:Ljava/lang/String;

.field public payCode:Ljava/lang/String;

.field public paySuccessDate:Ljava/lang/String;

.field public rateText:Ljava/lang/String;

.field public realAmount:Ljava/lang/String;

.field public shopName:Ljava/lang/String;

.field public totalDiscAmount:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
