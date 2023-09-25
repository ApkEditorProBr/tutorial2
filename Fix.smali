.class public Lapkeditor/patch/signature/Fix;
.super Ljava/lang/Object;




.field private static list:Ljava/util/List;
    
.end field



.method static constructor <clinit>()V
    .registers 1

    .prologue
    
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lapkeditor/patch/signature/Fix;->list:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    
    return-void
.end method

.method public static getSignatures(Landroid/content/pm/PackageInfo;)[Landroid/content/pm/Signature;
    .registers 20
    

    .prologue
    
    const-string v14, "%PACKAGE_NAME%"

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_11

    
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    
    :goto_10
    return-object v14

    
    :cond_11
    :try_start_11
    sget-object v9, Lapkeditor/patch/signature/Fix;->list:Ljava/util/List;

    
    
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    
    
    const/4 v5, 0x0

    
    
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_1d
    :goto_1d
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_a5

    
    if-nez v5, :cond_9d

    
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    
    
    array-length v15, v8

    const/4 v14, 0x0

    :goto_2b
    if-lt v14, v15, :cond_c0

    
    const/4 v14, 0x1

    new-array v12, v14, [Landroid/content/pm/Signature;

    
    
    new-instance v14, Ljava/math/BigInteger;

    const-string v15, "%RSA_DATA%"

    const/16 v16, 0x10

    invoke-direct/range {v14 .. v16}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v14}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    
    
    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    
    
    const-string v14, "X.509"

    invoke-static {v14}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v4

    
    
    invoke-virtual {v4, v6}, Ljava/security/cert/CertificateFactory;->generateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v14

    const/4 v15, 0x0

    aget-object v1, v14, v15

    check-cast v1, Ljava/security/cert/Certificate;

    
    
    const/4 v14, 0x0

    new-instance v15, Landroid/content/pm/Signature;

    invoke-virtual {v1}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Landroid/content/pm/Signature;-><init>([B)V

    aput-object v15, v12, v14

    
    const-string v14, "fix"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "new: "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v16, 0x0

    aget-object v16, v12, v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x0

    aget-object v16, v12, v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/pm/Signature;->hashCode()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    
    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    
    new-instance v14, Ljava/lang/ref/WeakReference;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v7, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    
    
    
    
    
    
    
    :cond_9d
    sput-object v7, Lapkeditor/patch/signature/Fix;->list:Ljava/util/List;
    :try_end_9f
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_9f} :catch_ec

    
    
    
    
    :goto_9f
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    goto/16 :goto_10

    
    
    
    
    :cond_a5
    :try_start_a5
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/ref/WeakReference;

    
    
    invoke-virtual {v13}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/PackageInfo;

    
    
    if-eqz v10, :cond_1d

    
    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    
    move-object/from16 v0, p0

    if-ne v10, v0, :cond_be

    const/4 v14, 0x1

    :goto_bb
    or-int/2addr v5, v14

    goto/16 :goto_1d

    :cond_be
    const/4 v14, 0x0

    goto :goto_bb

    
    
    
    
    :cond_c0
    aget-object v11, v8, v14

    
    
    const-string v16, "fix"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "old: "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v11}, Landroid/content/pm/Signature;->hashCode()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e8
    .catch Ljava/lang/Throwable; {:try_start_a5 .. :try_end_e8} :catch_ec

    
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_2b

    
    
    
    
    
    
    :catch_ec
    move-exception v3

    
    
    const-string v14, "fix"

    const-string v15, "error"

    invoke-static {v14, v15, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9f
.end method
