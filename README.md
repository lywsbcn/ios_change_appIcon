#ios 10.3 新特性 更改appIcon

1.在 info.plist 添加如下内容

	<dict>
		<key>CFBundleAlternateIcons</key>
		<dict>
			<key>icon1</key>
			<dict>
				<key>CFBundleIconFiles</key>
				<array>
					<string>icon1</string>
				</array>
			</dict>
			<key>icon2</key>
			<dict>
				<key>CFBundleIconFiles</key>
				<array>
					<string>icon2</string>
				</array>
				<key>UIPrerenderedIcon</key>
				<false/>
			</dict>
			<key>icon3</key>
			<dict>
				<key>UIPrerenderedIcon</key>
				<false/>
				<key>CFBundleIconFiles</key>
				<array>
					<string>icon3</string>
				</array>
			</dict>
		</dict>
		<key>CFBundlePrimaryIcon</key>
		<dict>
			<key>CFBundleIconFiles</key>
			<array>
				<string>icon1</string>
			</array>
			<key>UIPrerenderedIcon</key>
			<false/>
		</dict>
    
	</dict>
	
	2. 添加方法,这里是通过点击按钮来实现更换图标的
	
	

    if([UIApplication sharedApplication].supportsAlternateIcons){
    
        
        NSString *iconName=sender.titleLabel.text;
        
        [[UIApplication sharedApplication] setAlternateIconName:iconName completionHandler:^(NSError * _Nullable error){
        
        
        }];
        
    }
    

