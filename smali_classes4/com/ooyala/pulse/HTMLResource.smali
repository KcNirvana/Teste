.class public Lcom/ooyala/pulse/HTMLResource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ooyala/pulse/Resource;


# instance fields
.field a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ooyala/pulse/HTMLResource;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getHTML()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ooyala/pulse/HTMLResource;->a:Ljava/lang/String;

    return-object v0
.end method
