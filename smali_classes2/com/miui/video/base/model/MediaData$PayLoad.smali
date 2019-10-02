.class public Lcom/miui/video/base/model/MediaData$PayLoad;
.super Ljava/lang/Object;
.source "MediaData.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/base/model/MediaData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PayLoad"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x7L


# instance fields
.field public access_token:Ljava/lang/String;

.field public clientid:Ljava/lang/String;

.field public cp:Ljava/lang/String;

.field public pay_text:Ljava/lang/String;

.field public pcode:Ljava/lang/String;

.field public purchase_type:Ljava/lang/String;

.field public redirecturl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
